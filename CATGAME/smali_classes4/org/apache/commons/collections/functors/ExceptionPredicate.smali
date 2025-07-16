.class public final Lorg/apache/commons/collections/functors/ExceptionPredicate;
.super Ljava/lang/Object;
.source "ExceptionPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Predicate;

.field private static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/commons/collections/functors/ExceptionPredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/ExceptionPredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1

    .line 65
    new-instance p1, Lorg/apache/commons/collections/FunctorException;

    const-string v0, "ExceptionPredicate invoked"

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
