.class public final Lorg/apache/commons/collections4/functors/ExceptionPredicate;
.super Ljava/lang/Object;
.source "ExceptionPredicate.java"

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

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/collections4/functors/ExceptionPredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/ExceptionPredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    .local p0, "this":Lorg/apache/commons/collections4/functors/ExceptionPredicate;, "Lorg/apache/commons/collections4/functors/ExceptionPredicate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static exceptionPredicate()Lorg/apache/commons/collections4/Predicate;
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

    .line 46
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/functors/ExceptionPredicate;, "Lorg/apache/commons/collections4/functors/ExceptionPredicate<TT;>;"
    sget-object v0, Lorg/apache/commons/collections4/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections4/Predicate;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/collections4/functors/ExceptionPredicate;, "Lorg/apache/commons/collections4/functors/ExceptionPredicate<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "ExceptionPredicate invoked"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
